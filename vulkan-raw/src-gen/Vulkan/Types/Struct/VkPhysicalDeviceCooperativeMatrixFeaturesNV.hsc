{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_cooperative_matrix

module Vulkan.Types.Struct.VkPhysicalDeviceCooperativeMatrixFeaturesNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceCooperativeMatrixFeaturesNV" #-} VkPhysicalDeviceCooperativeMatrixFeaturesNV =
       VkPhysicalDeviceCooperativeMatrixFeaturesNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , cooperativeMatrix :: VkBool32
         , cooperativeMatrixRobustBufferAccess :: VkBool32
         }

instance Storable VkPhysicalDeviceCooperativeMatrixFeaturesNV where
  sizeOf    _ = #{size      VkPhysicalDeviceCooperativeMatrixFeaturesNV}
  alignment _ = #{alignment VkPhysicalDeviceCooperativeMatrixFeaturesNV}

  peek ptr = 
    VkPhysicalDeviceCooperativeMatrixFeaturesNV
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"cooperativeMatrix" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"cooperativeMatrixRobustBufferAccess" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"cooperativeMatrix" ptr val
    pokeField @"cooperativeMatrixRobustBufferAccess" ptr val

instance Offset "sType" VkPhysicalDeviceCooperativeMatrixFeaturesNV where
  rawOffset = #{offset VkPhysicalDeviceCooperativeMatrixFeaturesNV, sType}

instance Offset "pNext" VkPhysicalDeviceCooperativeMatrixFeaturesNV where
  rawOffset = #{offset VkPhysicalDeviceCooperativeMatrixFeaturesNV, pNext}

instance Offset "cooperativeMatrix" VkPhysicalDeviceCooperativeMatrixFeaturesNV where
  rawOffset = #{offset VkPhysicalDeviceCooperativeMatrixFeaturesNV, cooperativeMatrix}

instance Offset "cooperativeMatrixRobustBufferAccess" VkPhysicalDeviceCooperativeMatrixFeaturesNV where
  rawOffset = #{offset VkPhysicalDeviceCooperativeMatrixFeaturesNV, cooperativeMatrixRobustBufferAccess}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceCooperativeMatrixFeaturesNV where

#endif