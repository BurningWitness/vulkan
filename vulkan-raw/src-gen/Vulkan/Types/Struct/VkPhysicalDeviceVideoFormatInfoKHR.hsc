{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_video_queue

module Vulkan.Types.Struct.VkPhysicalDeviceVideoFormatInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkImageUsageFlags
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceVideoFormatInfoKHR" #-} VkPhysicalDeviceVideoFormatInfoKHR =
       VkPhysicalDeviceVideoFormatInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , imageUsage :: VkImageUsageFlags
         }

instance Storable VkPhysicalDeviceVideoFormatInfoKHR where
  sizeOf    _ = #{size      VkPhysicalDeviceVideoFormatInfoKHR}
  alignment _ = #{alignment VkPhysicalDeviceVideoFormatInfoKHR}

  peek ptr = 
    VkPhysicalDeviceVideoFormatInfoKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"imageUsage" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"imageUsage" ptr val

instance Offset "sType" VkPhysicalDeviceVideoFormatInfoKHR where
  rawOffset = #{offset VkPhysicalDeviceVideoFormatInfoKHR, sType}

instance Offset "pNext" VkPhysicalDeviceVideoFormatInfoKHR where
  rawOffset = #{offset VkPhysicalDeviceVideoFormatInfoKHR, pNext}

instance Offset "imageUsage" VkPhysicalDeviceVideoFormatInfoKHR where
  rawOffset = #{offset VkPhysicalDeviceVideoFormatInfoKHR, imageUsage}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceVideoFormatInfoKHR where

#endif