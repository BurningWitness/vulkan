{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_2

module Vulkan.Types.Struct.VkPhysicalDeviceShaderFloat16Int8Features where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceShaderFloat16Int8Features" #-} VkPhysicalDeviceShaderFloat16Int8Features =
       VkPhysicalDeviceShaderFloat16Int8Features
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , shaderFloat16 :: VkBool32 -- ^ 16-bit floats (halfs) in shaders
         , shaderInt8 :: VkBool32 -- ^ 8-bit integers in shaders
         }

instance Storable VkPhysicalDeviceShaderFloat16Int8Features where
  sizeOf    _ = #{size      VkPhysicalDeviceShaderFloat16Int8Features}
  alignment _ = #{alignment VkPhysicalDeviceShaderFloat16Int8Features}

  peek ptr = 
    VkPhysicalDeviceShaderFloat16Int8Features
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"shaderFloat16" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"shaderInt8" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"shaderFloat16" ptr val
    pokeField @"shaderInt8" ptr val

instance Offset "sType" VkPhysicalDeviceShaderFloat16Int8Features where
  rawOffset = #{offset VkPhysicalDeviceShaderFloat16Int8Features, sType}

instance Offset "pNext" VkPhysicalDeviceShaderFloat16Int8Features where
  rawOffset = #{offset VkPhysicalDeviceShaderFloat16Int8Features, pNext}

instance Offset "shaderFloat16" VkPhysicalDeviceShaderFloat16Int8Features where
  rawOffset = #{offset VkPhysicalDeviceShaderFloat16Int8Features, shaderFloat16}

instance Offset "shaderInt8" VkPhysicalDeviceShaderFloat16Int8Features where
  rawOffset = #{offset VkPhysicalDeviceShaderFloat16Int8Features, shaderInt8}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceShaderFloat16Int8Features where

#endif