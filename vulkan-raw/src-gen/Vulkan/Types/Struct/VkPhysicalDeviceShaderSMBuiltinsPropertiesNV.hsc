{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_shader_sm_builtins

module Vulkan.Types.Struct.VkPhysicalDeviceShaderSMBuiltinsPropertiesNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceShaderSMBuiltinsPropertiesNV" #-} VkPhysicalDeviceShaderSMBuiltinsPropertiesNV =
       VkPhysicalDeviceShaderSMBuiltinsPropertiesNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , shaderSMCount :: #{type uint32_t}
         , shaderWarpsPerSM :: #{type uint32_t}
         }

instance Storable VkPhysicalDeviceShaderSMBuiltinsPropertiesNV where
  sizeOf    _ = #{size      VkPhysicalDeviceShaderSMBuiltinsPropertiesNV}
  alignment _ = #{alignment VkPhysicalDeviceShaderSMBuiltinsPropertiesNV}

  peek ptr = 
    VkPhysicalDeviceShaderSMBuiltinsPropertiesNV
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"shaderSMCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"shaderWarpsPerSM" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"shaderSMCount" ptr val
    pokeField @"shaderWarpsPerSM" ptr val

instance Offset "sType" VkPhysicalDeviceShaderSMBuiltinsPropertiesNV where
  rawOffset = #{offset VkPhysicalDeviceShaderSMBuiltinsPropertiesNV, sType}

instance Offset "pNext" VkPhysicalDeviceShaderSMBuiltinsPropertiesNV where
  rawOffset = #{offset VkPhysicalDeviceShaderSMBuiltinsPropertiesNV, pNext}

instance Offset "shaderSMCount" VkPhysicalDeviceShaderSMBuiltinsPropertiesNV where
  rawOffset = #{offset VkPhysicalDeviceShaderSMBuiltinsPropertiesNV, shaderSMCount}

instance Offset "shaderWarpsPerSM" VkPhysicalDeviceShaderSMBuiltinsPropertiesNV where
  rawOffset = #{offset VkPhysicalDeviceShaderSMBuiltinsPropertiesNV, shaderWarpsPerSM}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceShaderSMBuiltinsPropertiesNV where

#endif