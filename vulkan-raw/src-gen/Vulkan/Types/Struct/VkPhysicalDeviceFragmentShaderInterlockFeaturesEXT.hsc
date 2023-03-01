{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
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
  sizeOf    _ = #{size      VkPhysicalDeviceFragmentShaderInterlockFeaturesEXT}
  alignment _ = #{alignment VkPhysicalDeviceFragmentShaderInterlockFeaturesEXT}

  peek ptr = 
    VkPhysicalDeviceFragmentShaderInterlockFeaturesEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"fragmentShaderSampleInterlock" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"fragmentShaderPixelInterlock" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"fragmentShaderShadingRateInterlock" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"fragmentShaderSampleInterlock" ptr val
    pokeField @"fragmentShaderPixelInterlock" ptr val
    pokeField @"fragmentShaderShadingRateInterlock" ptr val

instance Offset "sType" VkPhysicalDeviceFragmentShaderInterlockFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceFragmentShaderInterlockFeaturesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceFragmentShaderInterlockFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceFragmentShaderInterlockFeaturesEXT, pNext}

instance Offset "fragmentShaderSampleInterlock" VkPhysicalDeviceFragmentShaderInterlockFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceFragmentShaderInterlockFeaturesEXT, fragmentShaderSampleInterlock}

instance Offset "fragmentShaderPixelInterlock" VkPhysicalDeviceFragmentShaderInterlockFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceFragmentShaderInterlockFeaturesEXT, fragmentShaderPixelInterlock}

instance Offset "fragmentShaderShadingRateInterlock" VkPhysicalDeviceFragmentShaderInterlockFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceFragmentShaderInterlockFeaturesEXT, fragmentShaderShadingRateInterlock}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceFragmentShaderInterlockFeaturesEXT where

#endif