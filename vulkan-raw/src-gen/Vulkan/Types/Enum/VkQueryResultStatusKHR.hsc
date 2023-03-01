{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkQueryResultStatusKHR where

import Data.Int



#if VK_KHR_video_queue
type VkQueryResultStatusKHR = #{type int}
#endif

#if VK_KHR_video_queue
pattern VK_QUERY_RESULT_STATUS_ERROR_KHR :: (Eq a, Num a) => a
pattern VK_QUERY_RESULT_STATUS_ERROR_KHR = -1
#endif

#if VK_KHR_video_queue
pattern VK_QUERY_RESULT_STATUS_NOT_READY_KHR :: (Eq a, Num a) => a
pattern VK_QUERY_RESULT_STATUS_NOT_READY_KHR = 0
#endif

#if VK_KHR_video_queue
pattern VK_QUERY_RESULT_STATUS_COMPLETE_KHR :: (Eq a, Num a) => a
pattern VK_QUERY_RESULT_STATUS_COMPLETE_KHR = 1
#endif