{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_fragment_shader_barycentric

module Vulkan.Types.Struct.VkPhysicalDeviceFragmentShaderBarycentricPropertiesKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceFragmentShaderBarycentricPropertiesKHR" #-} VkPhysicalDeviceFragmentShaderBarycentricPropertiesKHR =
       VkPhysicalDeviceFragmentShaderBarycentricPropertiesKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , triStripVertexOrderIndependentOfProvokingVertex :: VkBool32
         }

instance Storable VkPhysicalDeviceFragmentShaderBarycentricPropertiesKHR where
  sizeOf    _ = #{size      VkPhysicalDeviceFragmentShaderBarycentricPropertiesKHR}
  alignment _ = #{alignment VkPhysicalDeviceFragmentShaderBarycentricPropertiesKHR}

  peek ptr = 
    VkPhysicalDeviceFragmentShaderBarycentricPropertiesKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"triStripVertexOrderIndependentOfProvokingVertex" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"triStripVertexOrderIndependentOfProvokingVertex" ptr val

instance Offset "sType" VkPhysicalDeviceFragmentShaderBarycentricPropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceFragmentShaderBarycentricPropertiesKHR, sType}

instance Offset "pNext" VkPhysicalDeviceFragmentShaderBarycentricPropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceFragmentShaderBarycentricPropertiesKHR, pNext}

instance Offset "triStripVertexOrderIndependentOfProvokingVertex" VkPhysicalDeviceFragmentShaderBarycentricPropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceFragmentShaderBarycentricPropertiesKHR, triStripVertexOrderIndependentOfProvokingVertex}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceFragmentShaderBarycentricPropertiesKHR where

#endif