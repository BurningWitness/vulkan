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
  sizeOf    _ = #{size      struct VkPhysicalDeviceExclusiveScissorFeaturesNV}
  alignment _ = #{alignment struct VkPhysicalDeviceExclusiveScissorFeaturesNV}

  peek ptr = 
    VkPhysicalDeviceExclusiveScissorFeaturesNV
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"exclusiveScissor" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"exclusiveScissor" ptr val

instance Offset "sType" VkPhysicalDeviceExclusiveScissorFeaturesNV where
  rawOffset = #{offset struct VkPhysicalDeviceExclusiveScissorFeaturesNV, sType}

instance Offset "pNext" VkPhysicalDeviceExclusiveScissorFeaturesNV where
  rawOffset = #{offset struct VkPhysicalDeviceExclusiveScissorFeaturesNV, pNext}

instance Offset "exclusiveScissor" VkPhysicalDeviceExclusiveScissorFeaturesNV where
  rawOffset = #{offset struct VkPhysicalDeviceExclusiveScissorFeaturesNV, exclusiveScissor}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceExclusiveScissorFeaturesNV where

#endif