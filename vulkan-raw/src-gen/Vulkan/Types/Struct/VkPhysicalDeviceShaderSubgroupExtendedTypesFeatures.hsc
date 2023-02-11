{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_2

module Vulkan.Types.Struct.VkPhysicalDeviceShaderSubgroupExtendedTypesFeatures where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceShaderSubgroupExtendedTypesFeatures" #-} VkPhysicalDeviceShaderSubgroupExtendedTypesFeatures =
       VkPhysicalDeviceShaderSubgroupExtendedTypesFeatures
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , shaderSubgroupExtendedTypes :: VkBool32 -- ^ Flag to specify whether subgroup operations with extended types are supported
         }

instance Storable VkPhysicalDeviceShaderSubgroupExtendedTypesFeatures where
  sizeOf    _ = #{size      struct VkPhysicalDeviceShaderSubgroupExtendedTypesFeatures}
  alignment _ = #{alignment struct VkPhysicalDeviceShaderSubgroupExtendedTypesFeatures}

  peek ptr = 
    VkPhysicalDeviceShaderSubgroupExtendedTypesFeatures
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"shaderSubgroupExtendedTypes" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"shaderSubgroupExtendedTypes" ptr val

instance Offset "sType" VkPhysicalDeviceShaderSubgroupExtendedTypesFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceShaderSubgroupExtendedTypesFeatures, sType}

instance Offset "pNext" VkPhysicalDeviceShaderSubgroupExtendedTypesFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceShaderSubgroupExtendedTypesFeatures, pNext}

instance Offset "shaderSubgroupExtendedTypes" VkPhysicalDeviceShaderSubgroupExtendedTypesFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceShaderSubgroupExtendedTypesFeatures, shaderSubgroupExtendedTypes}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceShaderSubgroupExtendedTypesFeatures where

#endif