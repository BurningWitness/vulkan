{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
  sizeOf    _ = #{size      struct VkPhysicalDeviceShaderDrawParametersFeatures}
  alignment _ = #{alignment struct VkPhysicalDeviceShaderDrawParametersFeatures}

  peek ptr = 
    VkPhysicalDeviceShaderDrawParametersFeatures
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"shaderDrawParameters" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"shaderDrawParameters" ptr val

instance Offset "sType" VkPhysicalDeviceShaderDrawParametersFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceShaderDrawParametersFeatures, sType}

instance Offset "pNext" VkPhysicalDeviceShaderDrawParametersFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceShaderDrawParametersFeatures, pNext}

instance Offset "shaderDrawParameters" VkPhysicalDeviceShaderDrawParametersFeatures where
  rawOffset = #{offset struct VkPhysicalDeviceShaderDrawParametersFeatures, shaderDrawParameters}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceShaderDrawParametersFeatures where

#endif