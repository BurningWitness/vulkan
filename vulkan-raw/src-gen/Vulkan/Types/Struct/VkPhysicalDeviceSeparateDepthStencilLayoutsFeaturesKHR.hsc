{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_separate_depth_stencil_layouts

module Vulkan.Types.Struct.VkPhysicalDeviceSeparateDepthStencilLayoutsFeaturesKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceSeparateDepthStencilLayoutsFeaturesKHR" #-} VkPhysicalDeviceSeparateDepthStencilLayoutsFeaturesKHR =
       VkPhysicalDeviceSeparateDepthStencilLayoutsFeaturesKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , separateDepthStencilLayouts :: VkBool32
         }

instance Storable VkPhysicalDeviceSeparateDepthStencilLayoutsFeaturesKHR where
  sizeOf    _ = #{size      VkPhysicalDeviceSeparateDepthStencilLayoutsFeaturesKHR}
  alignment _ = #{alignment VkPhysicalDeviceSeparateDepthStencilLayoutsFeaturesKHR}

  peek ptr = 
    VkPhysicalDeviceSeparateDepthStencilLayoutsFeaturesKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"separateDepthStencilLayouts" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"separateDepthStencilLayouts" ptr val

instance Offset "sType" VkPhysicalDeviceSeparateDepthStencilLayoutsFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceSeparateDepthStencilLayoutsFeaturesKHR, sType}

instance Offset "pNext" VkPhysicalDeviceSeparateDepthStencilLayoutsFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceSeparateDepthStencilLayoutsFeaturesKHR, pNext}

instance Offset "separateDepthStencilLayouts" VkPhysicalDeviceSeparateDepthStencilLayoutsFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceSeparateDepthStencilLayoutsFeaturesKHR, separateDepthStencilLayouts}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceSeparateDepthStencilLayoutsFeaturesKHR where

#endif