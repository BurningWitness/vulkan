{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_fragment_shader_barycentric

module Vulkan.Types.Struct.VkPhysicalDeviceFragmentShaderBarycentricFeaturesKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceFragmentShaderBarycentricFeaturesKHR" #-} VkPhysicalDeviceFragmentShaderBarycentricFeaturesKHR =
       VkPhysicalDeviceFragmentShaderBarycentricFeaturesKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , fragmentShaderBarycentric :: VkBool32
         }

instance Storable VkPhysicalDeviceFragmentShaderBarycentricFeaturesKHR where
  sizeOf    _ = #{size      VkPhysicalDeviceFragmentShaderBarycentricFeaturesKHR}
  alignment _ = #{alignment VkPhysicalDeviceFragmentShaderBarycentricFeaturesKHR}

  peek ptr = 
    VkPhysicalDeviceFragmentShaderBarycentricFeaturesKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"fragmentShaderBarycentric" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"fragmentShaderBarycentric" ptr val

instance Offset "sType" VkPhysicalDeviceFragmentShaderBarycentricFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceFragmentShaderBarycentricFeaturesKHR, sType}

instance Offset "pNext" VkPhysicalDeviceFragmentShaderBarycentricFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceFragmentShaderBarycentricFeaturesKHR, pNext}

instance Offset "fragmentShaderBarycentric" VkPhysicalDeviceFragmentShaderBarycentricFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceFragmentShaderBarycentricFeaturesKHR, fragmentShaderBarycentric}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceFragmentShaderBarycentricFeaturesKHR where

#endif