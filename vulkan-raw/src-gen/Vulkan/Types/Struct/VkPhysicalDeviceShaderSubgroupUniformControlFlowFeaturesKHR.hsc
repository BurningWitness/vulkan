{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_shader_subgroup_uniform_control_flow

module Vulkan.Types.Struct.VkPhysicalDeviceShaderSubgroupUniformControlFlowFeaturesKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceShaderSubgroupUniformControlFlowFeaturesKHR" #-} VkPhysicalDeviceShaderSubgroupUniformControlFlowFeaturesKHR =
       VkPhysicalDeviceShaderSubgroupUniformControlFlowFeaturesKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , shaderSubgroupUniformControlFlow :: VkBool32
         }

instance Storable VkPhysicalDeviceShaderSubgroupUniformControlFlowFeaturesKHR where
  sizeOf    _ = #{size      VkPhysicalDeviceShaderSubgroupUniformControlFlowFeaturesKHR}
  alignment _ = #{alignment VkPhysicalDeviceShaderSubgroupUniformControlFlowFeaturesKHR}

  peek ptr = 
    VkPhysicalDeviceShaderSubgroupUniformControlFlowFeaturesKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"shaderSubgroupUniformControlFlow" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"shaderSubgroupUniformControlFlow" ptr val

instance Offset "sType" VkPhysicalDeviceShaderSubgroupUniformControlFlowFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceShaderSubgroupUniformControlFlowFeaturesKHR, sType}

instance Offset "pNext" VkPhysicalDeviceShaderSubgroupUniformControlFlowFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceShaderSubgroupUniformControlFlowFeaturesKHR, pNext}

instance Offset "shaderSubgroupUniformControlFlow" VkPhysicalDeviceShaderSubgroupUniformControlFlowFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceShaderSubgroupUniformControlFlowFeaturesKHR, shaderSubgroupUniformControlFlow}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceShaderSubgroupUniformControlFlowFeaturesKHR where

#endif