{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkQueryResultFlagBits where

import Vulkan.Types.Base



type VkQueryResultFlagBits = VkFlags

-- | Results of the queries are written to the destination buffer as 64-bit values
pattern VK_QUERY_RESULT_64_BIT :: (Eq a, Num a) => a
pattern VK_QUERY_RESULT_64_BIT = 1

-- | Results of the queries are waited on before proceeding with the result copy
pattern VK_QUERY_RESULT_WAIT_BIT :: (Eq a, Num a) => a
pattern VK_QUERY_RESULT_WAIT_BIT = 2

-- | Besides the results of the query, the availability of the results is also written
pattern VK_QUERY_RESULT_WITH_AVAILABILITY_BIT :: (Eq a, Num a) => a
pattern VK_QUERY_RESULT_WITH_AVAILABILITY_BIT = 4

-- | Copy the partial results of the query even if the final results are not available
pattern VK_QUERY_RESULT_PARTIAL_BIT :: (Eq a, Num a) => a
pattern VK_QUERY_RESULT_PARTIAL_BIT = 8

#if VK_KHR_video_queue
pattern VK_QUERY_RESULT_WITH_STATUS_BIT_KHR :: (Eq a, Num a) => a
pattern VK_QUERY_RESULT_WITH_STATUS_BIT_KHR = 16
#endif