{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_AMD_shader_early_and_late_fragment_tests

module Vulkan.Types.Struct.VkPhysicalDeviceShaderEarlyAndLateFragmentTestsFeaturesAMD where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceShaderEarlyAndLateFragmentTestsFeaturesAMD" #-} VkPhysicalDeviceShaderEarlyAndLateFragmentTestsFeaturesAMD =
       VkPhysicalDeviceShaderEarlyAndLateFragmentTestsFeaturesAMD
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , shaderEarlyAndLateFragmentTests :: VkBool32
         }

instance Storable VkPhysicalDeviceShaderEarlyAndLateFragmentTestsFeaturesAMD where
  sizeOf    _ = #{size      VkPhysicalDeviceShaderEarlyAndLateFragmentTestsFeaturesAMD}
  alignment _ = #{alignment VkPhysicalDeviceShaderEarlyAndLateFragmentTestsFeaturesAMD}

  peek ptr = 
    VkPhysicalDeviceShaderEarlyAndLateFragmentTestsFeaturesAMD
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"shaderEarlyAndLateFragmentTests" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"shaderEarlyAndLateFragmentTests" ptr val

instance Offset "sType" VkPhysicalDeviceShaderEarlyAndLateFragmentTestsFeaturesAMD where
  rawOffset = #{offset VkPhysicalDeviceShaderEarlyAndLateFragmentTestsFeaturesAMD, sType}

instance Offset "pNext" VkPhysicalDeviceShaderEarlyAndLateFragmentTestsFeaturesAMD where
  rawOffset = #{offset VkPhysicalDeviceShaderEarlyAndLateFragmentTestsFeaturesAMD, pNext}

instance Offset "shaderEarlyAndLateFragmentTests" VkPhysicalDeviceShaderEarlyAndLateFragmentTestsFeaturesAMD where
  rawOffset = #{offset VkPhysicalDeviceShaderEarlyAndLateFragmentTestsFeaturesAMD, shaderEarlyAndLateFragmentTests}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceShaderEarlyAndLateFragmentTestsFeaturesAMD where

#endif