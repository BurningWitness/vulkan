{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_fragment_shader_barycentric

module Vulkan.Types.Struct.VkPhysicalDeviceFragmentShaderBarycentricFeaturesNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceFragmentShaderBarycentricFeaturesNV" #-} VkPhysicalDeviceFragmentShaderBarycentricFeaturesNV =
       VkPhysicalDeviceFragmentShaderBarycentricFeaturesNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , fragmentShaderBarycentric :: VkBool32
         }

instance Storable VkPhysicalDeviceFragmentShaderBarycentricFeaturesNV where
  sizeOf    _ = #{size      VkPhysicalDeviceFragmentShaderBarycentricFeaturesNV}
  alignment _ = #{alignment VkPhysicalDeviceFragmentShaderBarycentricFeaturesNV}

  peek ptr = 
    VkPhysicalDeviceFragmentShaderBarycentricFeaturesNV
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"fragmentShaderBarycentric" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"fragmentShaderBarycentric" ptr val

instance Offset "sType" VkPhysicalDeviceFragmentShaderBarycentricFeaturesNV where
  rawOffset = #{offset VkPhysicalDeviceFragmentShaderBarycentricFeaturesNV, sType}

instance Offset "pNext" VkPhysicalDeviceFragmentShaderBarycentricFeaturesNV where
  rawOffset = #{offset VkPhysicalDeviceFragmentShaderBarycentricFeaturesNV, pNext}

instance Offset "fragmentShaderBarycentric" VkPhysicalDeviceFragmentShaderBarycentricFeaturesNV where
  rawOffset = #{offset VkPhysicalDeviceFragmentShaderBarycentricFeaturesNV, fragmentShaderBarycentric}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceFragmentShaderBarycentricFeaturesNV where

#endif