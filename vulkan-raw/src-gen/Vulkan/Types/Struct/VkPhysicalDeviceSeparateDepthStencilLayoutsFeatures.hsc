{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_2

module Vulkan.Types.Struct.VkPhysicalDeviceSeparateDepthStencilLayoutsFeatures where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceSeparateDepthStencilLayoutsFeatures" #-} VkPhysicalDeviceSeparateDepthStencilLayoutsFeatures =
       VkPhysicalDeviceSeparateDepthStencilLayoutsFeatures
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , separateDepthStencilLayouts :: VkBool32
         }

instance Storable VkPhysicalDeviceSeparateDepthStencilLayoutsFeatures where
  sizeOf    _ = #{size      VkPhysicalDeviceSeparateDepthStencilLayoutsFeatures}
  alignment _ = #{alignment VkPhysicalDeviceSeparateDepthStencilLayoutsFeatures}

  peek ptr = 
    VkPhysicalDeviceSeparateDepthStencilLayoutsFeatures
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"separateDepthStencilLayouts" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"separateDepthStencilLayouts" ptr val

instance Offset "sType" VkPhysicalDeviceSeparateDepthStencilLayoutsFeatures where
  rawOffset = #{offset VkPhysicalDeviceSeparateDepthStencilLayoutsFeatures, sType}

instance Offset "pNext" VkPhysicalDeviceSeparateDepthStencilLayoutsFeatures where
  rawOffset = #{offset VkPhysicalDeviceSeparateDepthStencilLayoutsFeatures, pNext}

instance Offset "separateDepthStencilLayouts" VkPhysicalDeviceSeparateDepthStencilLayoutsFeatures where
  rawOffset = #{offset VkPhysicalDeviceSeparateDepthStencilLayoutsFeatures, separateDepthStencilLayouts}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceSeparateDepthStencilLayoutsFeatures where

#endif