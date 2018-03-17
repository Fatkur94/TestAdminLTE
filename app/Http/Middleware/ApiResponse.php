<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Response;

class ApiResponse
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  \Closure $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        if ($request->wantsJson()) {
            $response = $next($request);
            $originalContent = $response->getOriginalContent();
            $statusCode = array_get($originalContent, 'status_code', $response->getStatusCode());
            $originalMessage = Response::$statusTexts[$statusCode];
            $response->setStatusCode($statusCode);

            $content = [
                'status_code' => $statusCode,
                'success' => $response->isSuccessful(),
                'message' => array_get($originalContent, 'message', $originalMessage),
                'data' => array_get($originalContent, 'data', null),
            ];
            if ($content['message'] == "") {
                    $content['message'] = $originalMessage;
            }

            if (!$response->isSuccessful()) {
                $content['errors'] = array_get($originalContent, 'errors', $originalMessage);
            }

            if ($response instanceof Response) {
                $response->setContent($content);
            }

            if ($response instanceof JsonResponse) {
                $response->setData($content);
            }

            return $response;
        }

        return $next($request);
    }
}
