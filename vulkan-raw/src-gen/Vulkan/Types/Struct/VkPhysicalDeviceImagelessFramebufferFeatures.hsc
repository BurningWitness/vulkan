{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_2

module Vulkan.Types.Struct.VkPhysicalDeviceImagelessFramebufferFeatures where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceImagelessFramebufferFeatures" #-} VkPhysicalDeviceImagelessFramebufferFeatures =
       VkPhysicalDeviceImagelessFramebufferFeatures
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , imagelessFramebuffer :: VkBool32
         }

instance Storable VkPhysicalDeviceImagelessFramebufferFeatures where
  sizeOf    _ = #{size      struct VkPhysicalDeviceImagelessFramebufferFeatures}
  alignment _ = #{alignment struct VkPhysicalDeviceImagelessFramebufferFeatures}

  peek ptr = 
    VkPhysicalDeviceImagelessFramebufferFeatures
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"imagelessFramebuffer" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"imagelessFramebuffer" ptr val

instance Offset "sType" VkPhysicalDeviceImagelessFramebufferFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceImagelessFramebufferFeatures, sType}

instance Offset "pNext" VkPhysicalDeviceImagelessFramebufferFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceImagelessFramebufferFeatures, pNext}

instance Offset "imagelessFramebuffer" VkPhysicalDeviceImagelessFramebufferFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceImagelessFramebufferFeatures, imagelessFramebuffer}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceImagelessFramebufferFeatures where

#endif