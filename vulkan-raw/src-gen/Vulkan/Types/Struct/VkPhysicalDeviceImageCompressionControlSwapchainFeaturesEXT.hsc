{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_image_compression_control_swapchain

module Vulkan.Types.Struct.VkPhysicalDeviceImageCompressionControlSwapchainFeaturesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceImageCompressionControlSwapchainFeaturesEXT" #-} VkPhysicalDeviceImageCompressionControlSwapchainFeaturesEXT =
       VkPhysicalDeviceImageCompressionControlSwapchainFeaturesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , imageCompressionControlSwapchain :: VkBool32
         }

instance Storable VkPhysicalDeviceImageCompressionControlSwapchainFeaturesEXT where
  sizeOf    _ = #{size      struct VkPhysicalDeviceImageCompressionControlSwapchainFeaturesEXT}
  alignment _ = #{alignment struct VkPhysicalDeviceImageCompressionControlSwapchainFeaturesEXT}

  peek ptr = 
    VkPhysicalDeviceImageCompressionControlSwapchainFeaturesEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"imageCompressionControlSwapchain" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"imageCompressionControlSwapchain" ptr val

instance Offset "sType" VkPhysicalDeviceImageCompressionControlSwapchainFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceImageCompressionControlSwapchainFeaturesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceImageCompressionControlSwapchainFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceImageCompressionControlSwapchainFeaturesEXT, pNext}

instance Offset "imageCompressionControlSwapchain" VkPhysicalDeviceImageCompressionControlSwapchainFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceImageCompressionControlSwapchainFeaturesEXT, imageCompressionControlSwapchain}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceImageCompressionControlSwapchainFeaturesEXT where

#endif