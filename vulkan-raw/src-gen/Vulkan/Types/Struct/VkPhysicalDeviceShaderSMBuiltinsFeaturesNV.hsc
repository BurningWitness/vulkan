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

module Vulkan.Types.Struct.VkPhysicalDeviceShaderSMBuiltinsFeaturesNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceShaderSMBuiltinsFeaturesNV" #-} VkPhysicalDeviceShaderSMBuiltinsFeaturesNV =
       VkPhysicalDeviceShaderSMBuiltinsFeaturesNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , shaderSMBuiltins :: VkBool32
         }

instance Storable VkPhysicalDeviceShaderSMBuiltinsFeaturesNV where
  sizeOf    _ = #{size      VkPhysicalDeviceShaderSMBuiltinsFeaturesNV}
  alignment _ = #{alignment VkPhysicalDeviceShaderSMBuiltinsFeaturesNV}

  peek ptr = 
    VkPhysicalDeviceShaderSMBuiltinsFeaturesNV
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"shaderSMBuiltins" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"shaderSMBuiltins" ptr val

instance Offset "sType" VkPhysicalDeviceShaderSMBuiltinsFeaturesNV where
  rawOffset = #{offset VkPhysicalDeviceShaderSMBuiltinsFeaturesNV, sType}

instance Offset "pNext" VkPhysicalDeviceShaderSMBuiltinsFeaturesNV where
  rawOffset = #{offset VkPhysicalDeviceShaderSMBuiltinsFeaturesNV, pNext}

instance Offset "shaderSMBuiltins" VkPhysicalDeviceShaderSMBuiltinsFeaturesNV where
  rawOffset = #{offset VkPhysicalDeviceShaderSMBuiltinsFeaturesNV, shaderSMBuiltins}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceShaderSMBuiltinsFeaturesNV where

#endif