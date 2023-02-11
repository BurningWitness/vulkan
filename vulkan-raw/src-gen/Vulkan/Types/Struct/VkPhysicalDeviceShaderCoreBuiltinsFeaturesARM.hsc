{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_ARM_shader_core_builtins

module Vulkan.Types.Struct.VkPhysicalDeviceShaderCoreBuiltinsFeaturesARM where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceShaderCoreBuiltinsFeaturesARM" #-} VkPhysicalDeviceShaderCoreBuiltinsFeaturesARM =
       VkPhysicalDeviceShaderCoreBuiltinsFeaturesARM
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , shaderCoreBuiltins :: VkBool32
         }

instance Storable VkPhysicalDeviceShaderCoreBuiltinsFeaturesARM where
  sizeOf    _ = #{size      struct VkPhysicalDeviceShaderCoreBuiltinsFeaturesARM}
  alignment _ = #{alignment struct VkPhysicalDeviceShaderCoreBuiltinsFeaturesARM}

  peek ptr = 
    VkPhysicalDeviceShaderCoreBuiltinsFeaturesARM
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"shaderCoreBuiltins" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"shaderCoreBuiltins" ptr val

instance Offset "sType" VkPhysicalDeviceShaderCoreBuiltinsFeaturesARM where
  rawOffset = #{offset struct VkPhysicalDeviceShaderCoreBuiltinsFeaturesARM, sType}

instance Offset "pNext" VkPhysicalDeviceShaderCoreBuiltinsFeaturesARM where
  rawOffset = #{offset struct VkPhysicalDeviceShaderCoreBuiltinsFeaturesARM, pNext}

instance Offset "shaderCoreBuiltins" VkPhysicalDeviceShaderCoreBuiltinsFeaturesARM where
  rawOffset = #{offset struct VkPhysicalDeviceShaderCoreBuiltinsFeaturesARM, shaderCoreBuiltins}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceShaderCoreBuiltinsFeaturesARM where

#endif