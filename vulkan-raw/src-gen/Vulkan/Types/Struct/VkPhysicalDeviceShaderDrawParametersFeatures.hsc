{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Struct.VkPhysicalDeviceShaderDrawParametersFeatures where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceShaderDrawParametersFeatures" #-} VkPhysicalDeviceShaderDrawParametersFeatures =
       VkPhysicalDeviceShaderDrawParametersFeatures
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , shaderDrawParameters :: VkBool32
         }

instance Storable VkPhysicalDeviceShaderDrawParametersFeatures where
  sizeOf    _ = #{size      VkPhysicalDeviceShaderDrawParametersFeatures}
  alignment _ = #{alignment VkPhysicalDeviceShaderDrawParametersFeatures}

  peek ptr = 
    VkPhysicalDeviceShaderDrawParametersFeatures
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"shaderDrawParameters" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"shaderDrawParameters" ptr val

instance Offset "sType" VkPhysicalDeviceShaderDrawParametersFeatures where
  rawOffset = #{offset VkPhysicalDeviceShaderDrawParametersFeatures, sType}

instance Offset "pNext" VkPhysicalDeviceShaderDrawParametersFeatures where
  rawOffset = #{offset VkPhysicalDeviceShaderDrawParametersFeatures, pNext}

instance Offset "shaderDrawParameters" VkPhysicalDeviceShaderDrawParametersFeatures where
  rawOffset = #{offset VkPhysicalDeviceShaderDrawParametersFeatures, shaderDrawParameters}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceShaderDrawParametersFeatures where

#endif