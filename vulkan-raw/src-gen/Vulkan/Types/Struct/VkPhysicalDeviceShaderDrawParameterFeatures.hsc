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

module Vulkan.Types.Struct.VkPhysicalDeviceShaderDrawParameterFeatures where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceShaderDrawParameterFeatures" #-} VkPhysicalDeviceShaderDrawParameterFeatures =
       VkPhysicalDeviceShaderDrawParameterFeatures
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , shaderDrawParameters :: VkBool32
         }

instance Storable VkPhysicalDeviceShaderDrawParameterFeatures where
  sizeOf    _ = #{size      VkPhysicalDeviceShaderDrawParameterFeatures}
  alignment _ = #{alignment VkPhysicalDeviceShaderDrawParameterFeatures}

  peek ptr = 
    VkPhysicalDeviceShaderDrawParameterFeatures
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"shaderDrawParameters" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"shaderDrawParameters" ptr val

instance Offset "sType" VkPhysicalDeviceShaderDrawParameterFeatures where
  rawOffset = #{offset VkPhysicalDeviceShaderDrawParameterFeatures, sType}

instance Offset "pNext" VkPhysicalDeviceShaderDrawParameterFeatures where
  rawOffset = #{offset VkPhysicalDeviceShaderDrawParameterFeatures, pNext}

instance Offset "shaderDrawParameters" VkPhysicalDeviceShaderDrawParameterFeatures where
  rawOffset = #{offset VkPhysicalDeviceShaderDrawParameterFeatures, shaderDrawParameters}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceShaderDrawParameterFeatures where

#endif