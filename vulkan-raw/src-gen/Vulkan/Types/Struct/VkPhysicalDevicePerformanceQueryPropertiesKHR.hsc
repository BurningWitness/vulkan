{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_performance_query

module Vulkan.Types.Struct.VkPhysicalDevicePerformanceQueryPropertiesKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDevicePerformanceQueryPropertiesKHR" #-} VkPhysicalDevicePerformanceQueryPropertiesKHR =
       VkPhysicalDevicePerformanceQueryPropertiesKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , allowCommandBufferQueryCopies :: VkBool32 -- ^ Flag to specify whether performance queries are allowed to be used in vkCmdCopyQueryPoolResults
         }

instance Storable VkPhysicalDevicePerformanceQueryPropertiesKHR where
  sizeOf    _ = #{size      struct VkPhysicalDevicePerformanceQueryPropertiesKHR}
  alignment _ = #{alignment struct VkPhysicalDevicePerformanceQueryPropertiesKHR}

  peek ptr = 
    VkPhysicalDevicePerformanceQueryPropertiesKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"allowCommandBufferQueryCopies" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"allowCommandBufferQueryCopies" ptr val

instance Offset "sType" VkPhysicalDevicePerformanceQueryPropertiesKHR where
  rawOffset = #{offset struct VkPhysicalDevicePerformanceQueryPropertiesKHR, sType}

instance Offset "pNext" VkPhysicalDevicePerformanceQueryPropertiesKHR where
  rawOffset = #{offset struct VkPhysicalDevicePerformanceQueryPropertiesKHR, pNext}

instance Offset "allowCommandBufferQueryCopies" VkPhysicalDevicePerformanceQueryPropertiesKHR where
  rawOffset = #{offset struct VkPhysicalDevicePerformanceQueryPropertiesKHR, allowCommandBufferQueryCopies}

#else

module Vulkan.Types.Struct.VkPhysicalDevicePerformanceQueryPropertiesKHR where

#endif