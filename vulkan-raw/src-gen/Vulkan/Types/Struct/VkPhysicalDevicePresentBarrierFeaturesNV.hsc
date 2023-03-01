{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_present_barrier

module Vulkan.Types.Struct.VkPhysicalDevicePresentBarrierFeaturesNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDevicePresentBarrierFeaturesNV" #-} VkPhysicalDevicePresentBarrierFeaturesNV =
       VkPhysicalDevicePresentBarrierFeaturesNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , presentBarrier :: VkBool32
         }

instance Storable VkPhysicalDevicePresentBarrierFeaturesNV where
  sizeOf    _ = #{size      VkPhysicalDevicePresentBarrierFeaturesNV}
  alignment _ = #{alignment VkPhysicalDevicePresentBarrierFeaturesNV}

  peek ptr = 
    VkPhysicalDevicePresentBarrierFeaturesNV
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"presentBarrier" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"presentBarrier" ptr val

instance Offset "sType" VkPhysicalDevicePresentBarrierFeaturesNV where
  rawOffset = #{offset VkPhysicalDevicePresentBarrierFeaturesNV, sType}

instance Offset "pNext" VkPhysicalDevicePresentBarrierFeaturesNV where
  rawOffset = #{offset VkPhysicalDevicePresentBarrierFeaturesNV, pNext}

instance Offset "presentBarrier" VkPhysicalDevicePresentBarrierFeaturesNV where
  rawOffset = #{offset VkPhysicalDevicePresentBarrierFeaturesNV, presentBarrier}

#else

module Vulkan.Types.Struct.VkPhysicalDevicePresentBarrierFeaturesNV where

#endif