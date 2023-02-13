{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_shader_subgroup_extended_types

module Vulkan.Types.Struct.VkPhysicalDeviceShaderSubgroupExtendedTypesFeaturesKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceShaderSubgroupExtendedTypesFeaturesKHR" #-} VkPhysicalDeviceShaderSubgroupExtendedTypesFeaturesKHR =
       VkPhysicalDeviceShaderSubgroupExtendedTypesFeaturesKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , shaderSubgroupExtendedTypes :: VkBool32 -- ^ Flag to specify whether subgroup operations with extended types are supported
         }

instance Storable VkPhysicalDeviceShaderSubgroupExtendedTypesFeaturesKHR where
  sizeOf    _ = #{size      VkPhysicalDeviceShaderSubgroupExtendedTypesFeaturesKHR}
  alignment _ = #{alignment VkPhysicalDeviceShaderSubgroupExtendedTypesFeaturesKHR}

  peek ptr = 
    VkPhysicalDeviceShaderSubgroupExtendedTypesFeaturesKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"shaderSubgroupExtendedTypes" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"shaderSubgroupExtendedTypes" ptr val

instance Offset "sType" VkPhysicalDeviceShaderSubgroupExtendedTypesFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceShaderSubgroupExtendedTypesFeaturesKHR, sType}

instance Offset "pNext" VkPhysicalDeviceShaderSubgroupExtendedTypesFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceShaderSubgroupExtendedTypesFeaturesKHR, pNext}

instance Offset "shaderSubgroupExtendedTypes" VkPhysicalDeviceShaderSubgroupExtendedTypesFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceShaderSubgroupExtendedTypesFeaturesKHR, shaderSubgroupExtendedTypes}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceShaderSubgroupExtendedTypesFeaturesKHR where

#endif