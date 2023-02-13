{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkSemaphoreImportFlagBits where

import Vulkan.Types.Base



#if VK_VERSION_1_1
type VkSemaphoreImportFlagBits = VkFlags
#endif

#if VK_VERSION_1_1
pattern VK_SEMAPHORE_IMPORT_TEMPORARY_BIT :: (Eq a, Num a) => a
pattern VK_SEMAPHORE_IMPORT_TEMPORARY_BIT = 1
#endif

#if VK_VERSION_1_1
pattern VK_SEMAPHORE_IMPORT_TEMPORARY_BIT_KHR :: (Eq a, Num a) => a
pattern VK_SEMAPHORE_IMPORT_TEMPORARY_BIT_KHR = 1
#endif