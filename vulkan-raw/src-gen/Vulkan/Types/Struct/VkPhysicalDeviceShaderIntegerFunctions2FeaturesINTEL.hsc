{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_INTEL_shader_integer_functions2

module Vulkan.Types.Struct.VkPhysicalDeviceShaderIntegerFunctions2FeaturesINTEL where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceShaderIntegerFunctions2FeaturesINTEL" #-} VkPhysicalDeviceShaderIntegerFunctions2FeaturesINTEL =
       VkPhysicalDeviceShaderIntegerFunctions2FeaturesINTEL
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , shaderIntegerFunctions2 :: VkBool32
         }

instance Storable VkPhysicalDeviceShaderIntegerFunctions2FeaturesINTEL where
  sizeOf    _ = #{size      VkPhysicalDeviceShaderIntegerFunctions2FeaturesINTEL}
  alignment _ = #{alignment VkPhysicalDeviceShaderIntegerFunctions2FeaturesINTEL}

  peek ptr = 
    VkPhysicalDeviceShaderIntegerFunctions2FeaturesINTEL
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"shaderIntegerFunctions2" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"shaderIntegerFunctions2" ptr val

instance Offset "sType" VkPhysicalDeviceShaderIntegerFunctions2FeaturesINTEL where
  rawOffset = #{offset VkPhysicalDeviceShaderIntegerFunctions2FeaturesINTEL, sType}

instance Offset "pNext" VkPhysicalDeviceShaderIntegerFunctions2FeaturesINTEL where
  rawOffset = #{offset VkPhysicalDeviceShaderIntegerFunctions2FeaturesINTEL, pNext}

instance Offset "shaderIntegerFunctions2" VkPhysicalDeviceShaderIntegerFunctions2FeaturesINTEL where
  rawOffset = #{offset VkPhysicalDeviceShaderIntegerFunctions2FeaturesINTEL, shaderIntegerFunctions2}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceShaderIntegerFunctions2FeaturesINTEL where

#endif