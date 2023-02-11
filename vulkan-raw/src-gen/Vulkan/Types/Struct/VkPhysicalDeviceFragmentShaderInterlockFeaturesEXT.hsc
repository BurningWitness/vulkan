{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_fragment_shader_interlock

module Vulkan.Types.Struct.VkPhysicalDeviceFragmentShaderInterlockFeaturesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceFragmentShaderInterlockFeaturesEXT" #-} VkPhysicalDeviceFragmentShaderInterlockFeaturesEXT =
       VkPhysicalDeviceFragmentShaderInterlockFeaturesEXT
         { sType :: VkStructureType
         , pNext :: Ptr () -- ^ Pointer to next structure
         , fragmentShaderSampleInterlock :: VkBool32
         , fragmentShaderPixelInterlock :: VkBool32
         , fragmentShaderShadingRateInterlock :: VkBool32
         }

instance Storable VkPhysicalDeviceFragmentShaderInterlockFeaturesEXT where
  sizeOf    _ = #{size      struct VkPhysicalDeviceFragmentShaderInterlockFeaturesEXT}
  alignment _ = #{alignment struct VkPhysicalDeviceFragmentShaderInterlockFeaturesEXT}

  peek ptr = 
    VkPhysicalDeviceFragmentShaderInterlockFeaturesEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"fragmentShaderSampleInterlock" ptr)
       <*> peek (offset @"fragmentShaderPixelInterlock" ptr)
       <*> peek (offset @"fragmentShaderShadingRateInterlock" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"fragmentShaderSampleInterlock" ptr val
    pokeField @"fragmentShaderPixelInterlock" ptr val
    pokeField @"fragmentShaderShadingRateInterlock" ptr val

instance Offset "sType" VkPhysicalDeviceFragmentShaderInterlockFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceFragmentShaderInterlockFeaturesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceFragmentShaderInterlockFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceFragmentShaderInterlockFeaturesEXT, pNext}

instance Offset "fragmentShaderSampleInterlock" VkPhysicalDeviceFragmentShaderInterlockFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceFragmentShaderInterlockFeaturesEXT, fragmentShaderSampleInterlock}

instance Offset "fragmentShaderPixelInterlock" VkPhysicalDeviceFragmentShaderInterlockFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceFragmentShaderInterlockFeaturesEXT, fragmentShaderPixelInterlock}

instance Offset "fragmentShaderShadingRateInterlock" VkPhysicalDeviceFragmentShaderInterlockFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceFragmentShaderInterlockFeaturesEXT, fragmentShaderShadingRateInterlock}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceFragmentShaderInterlockFeaturesEXT where

#endif