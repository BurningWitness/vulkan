{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_scissor_exclusive

module Vulkan.Types.Struct.VkPhysicalDeviceExclusiveScissorFeaturesNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceExclusiveScissorFeaturesNV" #-} VkPhysicalDeviceExclusiveScissorFeaturesNV =
       VkPhysicalDeviceExclusiveScissorFeaturesNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , exclusiveScissor :: VkBool32
         }

instance Storable VkPhysicalDeviceExclusiveScissorFeaturesNV where
  sizeOf    _ = #{size      VkPhysicalDeviceExclusiveScissorFeaturesNV}
  alignment _ = #{alignment VkPhysicalDeviceExclusiveScissorFeaturesNV}

  peek ptr = 
    VkPhysicalDeviceExclusiveScissorFeaturesNV
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"exclusiveScissor" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"exclusiveScissor" ptr val

instance Offset "sType" VkPhysicalDeviceExclusiveScissorFeaturesNV where
  rawOffset = #{offset VkPhysicalDeviceExclusiveScissorFeaturesNV, sType}

instance Offset "pNext" VkPhysicalDeviceExclusiveScissorFeaturesNV where
  rawOffset = #{offset VkPhysicalDeviceExclusiveScissorFeaturesNV, pNext}

instance Offset "exclusiveScissor" VkPhysicalDeviceExclusiveScissorFeaturesNV where
  rawOffset = #{offset VkPhysicalDeviceExclusiveScissorFeaturesNV, exclusiveScissor}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceExclusiveScissorFeaturesNV where

#endif