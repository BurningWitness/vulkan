{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_imageless_framebuffer

module Vulkan.Types.Struct.VkPhysicalDeviceImagelessFramebufferFeaturesKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceImagelessFramebufferFeaturesKHR" #-} VkPhysicalDeviceImagelessFramebufferFeaturesKHR =
       VkPhysicalDeviceImagelessFramebufferFeaturesKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , imagelessFramebuffer :: VkBool32
         }

instance Storable VkPhysicalDeviceImagelessFramebufferFeaturesKHR where
  sizeOf    _ = #{size      VkPhysicalDeviceImagelessFramebufferFeaturesKHR}
  alignment _ = #{alignment VkPhysicalDeviceImagelessFramebufferFeaturesKHR}

  peek ptr = 
    VkPhysicalDeviceImagelessFramebufferFeaturesKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"imagelessFramebuffer" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"imagelessFramebuffer" ptr val

instance Offset "sType" VkPhysicalDeviceImagelessFramebufferFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceImagelessFramebufferFeaturesKHR, sType}

instance Offset "pNext" VkPhysicalDeviceImagelessFramebufferFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceImagelessFramebufferFeaturesKHR, pNext}

instance Offset "imagelessFramebuffer" VkPhysicalDeviceImagelessFramebufferFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceImagelessFramebufferFeaturesKHR, imagelessFramebuffer}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceImagelessFramebufferFeaturesKHR where

#endif