{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_inherited_viewport_scissor

module Vulkan.Types.Struct.VkPhysicalDeviceInheritedViewportScissorFeaturesNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceInheritedViewportScissorFeaturesNV" #-} VkPhysicalDeviceInheritedViewportScissorFeaturesNV =
       VkPhysicalDeviceInheritedViewportScissorFeaturesNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , inheritedViewportScissor2D :: VkBool32
         }

instance Storable VkPhysicalDeviceInheritedViewportScissorFeaturesNV where
  sizeOf    _ = #{size      VkPhysicalDeviceInheritedViewportScissorFeaturesNV}
  alignment _ = #{alignment VkPhysicalDeviceInheritedViewportScissorFeaturesNV}

  peek ptr = 
    VkPhysicalDeviceInheritedViewportScissorFeaturesNV
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"inheritedViewportScissor2D" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"inheritedViewportScissor2D" ptr val

instance Offset "sType" VkPhysicalDeviceInheritedViewportScissorFeaturesNV where
  rawOffset = #{offset VkPhysicalDeviceInheritedViewportScissorFeaturesNV, sType}

instance Offset "pNext" VkPhysicalDeviceInheritedViewportScissorFeaturesNV where
  rawOffset = #{offset VkPhysicalDeviceInheritedViewportScissorFeaturesNV, pNext}

instance Offset "inheritedViewportScissor2D" VkPhysicalDeviceInheritedViewportScissorFeaturesNV where
  rawOffset = #{offset VkPhysicalDeviceInheritedViewportScissorFeaturesNV, inheritedViewportScissor2D}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceInheritedViewportScissorFeaturesNV where

#endif