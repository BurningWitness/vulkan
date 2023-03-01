{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
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
  sizeOf    _ = #{size      VkPhysicalDeviceShaderCoreBuiltinsPropertiesARM}
  alignment _ = #{alignment VkPhysicalDeviceShaderCoreBuiltinsPropertiesARM}

  peek ptr = 
    VkPhysicalDeviceShaderCoreBuiltinsPropertiesARM
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"shaderCoreMask" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"shaderCoreCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"shaderWarpsPerCore" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"shaderCoreMask" ptr val
    pokeField @"shaderCoreCount" ptr val
    pokeField @"shaderWarpsPerCore" ptr val

instance Offset "sType" VkPhysicalDeviceShaderCoreBuiltinsPropertiesARM where
  rawOffset = #{offset VkPhysicalDeviceShaderCoreBuiltinsPropertiesARM, sType}

instance Offset "pNext" VkPhysicalDeviceShaderCoreBuiltinsPropertiesARM where
  rawOffset = #{offset VkPhysicalDeviceShaderCoreBuiltinsPropertiesARM, pNext}

instance Offset "shaderCoreMask" VkPhysicalDeviceShaderCoreBuiltinsPropertiesARM where
  rawOffset = #{offset VkPhysicalDeviceShaderCoreBuiltinsPropertiesARM, shaderCoreMask}

instance Offset "shaderCoreCount" VkPhysicalDeviceShaderCoreBuiltinsPropertiesARM where
  rawOffset = #{offset VkPhysicalDeviceShaderCoreBuiltinsPropertiesARM, shaderCoreCount}

instance Offset "shaderWarpsPerCore" VkPhysicalDeviceShaderCoreBuiltinsPropertiesARM where
  rawOffset = #{offset VkPhysicalDeviceShaderCoreBuiltinsPropertiesARM, shaderWarpsPerCore}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceShaderCoreBuiltinsPropertiesARM where

#endif