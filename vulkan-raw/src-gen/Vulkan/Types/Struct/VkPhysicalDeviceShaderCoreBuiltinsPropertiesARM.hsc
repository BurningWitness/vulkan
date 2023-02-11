{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_ARM_shader_core_builtins

module Vulkan.Types.Struct.VkPhysicalDeviceShaderCoreBuiltinsPropertiesARM where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceShaderCoreBuiltinsPropertiesARM" #-} VkPhysicalDeviceShaderCoreBuiltinsPropertiesARM =
       VkPhysicalDeviceShaderCoreBuiltinsPropertiesARM
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , shaderCoreMask :: #{type uint64_t}
         , shaderCoreCount :: #{type uint32_t}
         , shaderWarpsPerCore :: #{type uint32_t}
         }

instance Storable VkPhysicalDeviceShaderCoreBuiltinsPropertiesARM where
  sizeOf    _ = #{size      struct VkPhysicalDeviceShaderCoreBuiltinsPropertiesARM}
  alignment _ = #{alignment struct VkPhysicalDeviceShaderCoreBuiltinsPropertiesARM}

  peek ptr = 
    VkPhysicalDeviceShaderCoreBuiltinsPropertiesARM
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"shaderCoreMask" ptr)
       <*> peek (offset @"shaderCoreCount" ptr)
       <*> peek (offset @"shaderWarpsPerCore" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"shaderCoreMask" ptr val
    pokeField @"shaderCoreCount" ptr val
    pokeField @"shaderWarpsPerCore" ptr val

instance Offset "sType" VkPhysicalDeviceShaderCoreBuiltinsPropertiesARM where
  rawOffset = #{offset struct VkPhysicalDeviceShaderCoreBuiltinsPropertiesARM, sType}

instance Offset "pNext" VkPhysicalDeviceShaderCoreBuiltinsPropertiesARM where
  rawOffset = #{offset struct VkPhysicalDeviceShaderCoreBuiltinsPropertiesARM, pNext}

instance Offset "shaderCoreMask" VkPhysicalDeviceShaderCoreBuiltinsPropertiesARM where
  rawOffset = #{offset struct VkPhysicalDeviceShaderCoreBuiltinsPropertiesARM, shaderCoreMask}

instance Offset "shaderCoreCount" VkPhysicalDeviceShaderCoreBuiltinsPropertiesARM where
  rawOffset = #{offset struct VkPhysicalDeviceShaderCoreBuiltinsPropertiesARM, shaderCoreCount}

instance Offset "shaderWarpsPerCore" VkPhysicalDeviceShaderCoreBuiltinsPropertiesARM where
  rawOffset = #{offset struct VkPhysicalDeviceShaderCoreBuiltinsPropertiesARM, shaderWarpsPerCore}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceShaderCoreBuiltinsPropertiesARM where

#endif