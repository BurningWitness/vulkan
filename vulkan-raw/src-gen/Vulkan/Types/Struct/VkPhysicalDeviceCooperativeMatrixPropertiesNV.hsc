{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_cooperative_matrix

module Vulkan.Types.Struct.VkPhysicalDeviceCooperativeMatrixPropertiesNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkShaderStageFlags
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceCooperativeMatrixPropertiesNV" #-} VkPhysicalDeviceCooperativeMatrixPropertiesNV =
       VkPhysicalDeviceCooperativeMatrixPropertiesNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , cooperativeMatrixSupportedStages :: VkShaderStageFlags
         }

instance Storable VkPhysicalDeviceCooperativeMatrixPropertiesNV where
  sizeOf    _ = #{size      VkPhysicalDeviceCooperativeMatrixPropertiesNV}
  alignment _ = #{alignment VkPhysicalDeviceCooperativeMatrixPropertiesNV}

  peek ptr = 
    VkPhysicalDeviceCooperativeMatrixPropertiesNV
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"cooperativeMatrixSupportedStages" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"cooperativeMatrixSupportedStages" ptr val

instance Offset "sType" VkPhysicalDeviceCooperativeMatrixPropertiesNV where
  rawOffset = #{offset VkPhysicalDeviceCooperativeMatrixPropertiesNV, sType}

instance Offset "pNext" VkPhysicalDeviceCooperativeMatrixPropertiesNV where
  rawOffset = #{offset VkPhysicalDeviceCooperativeMatrixPropertiesNV, pNext}

instance Offset "cooperativeMatrixSupportedStages" VkPhysicalDeviceCooperativeMatrixPropertiesNV where
  rawOffset = #{offset VkPhysicalDeviceCooperativeMatrixPropertiesNV, cooperativeMatrixSupportedStages}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceCooperativeMatrixPropertiesNV where

#endif