{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_opacity_micromap

module Vulkan.Types.Struct.VkPhysicalDeviceOpacityMicromapFeaturesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceOpacityMicromapFeaturesEXT" #-} VkPhysicalDeviceOpacityMicromapFeaturesEXT =
       VkPhysicalDeviceOpacityMicromapFeaturesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , micromap :: VkBool32
         , micromapCaptureReplay :: VkBool32
         , micromapHostCommands :: VkBool32
         }

instance Storable VkPhysicalDeviceOpacityMicromapFeaturesEXT where
  sizeOf    _ = #{size      VkPhysicalDeviceOpacityMicromapFeaturesEXT}
  alignment _ = #{alignment VkPhysicalDeviceOpacityMicromapFeaturesEXT}

  peek ptr = 
    VkPhysicalDeviceOpacityMicromapFeaturesEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"micromap" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"micromapCaptureReplay" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"micromapHostCommands" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"micromap" ptr val
    pokeField @"micromapCaptureReplay" ptr val
    pokeField @"micromapHostCommands" ptr val

instance Offset "sType" VkPhysicalDeviceOpacityMicromapFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceOpacityMicromapFeaturesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceOpacityMicromapFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceOpacityMicromapFeaturesEXT, pNext}

instance Offset "micromap" VkPhysicalDeviceOpacityMicromapFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceOpacityMicromapFeaturesEXT, micromap}

instance Offset "micromapCaptureReplay" VkPhysicalDeviceOpacityMicromapFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceOpacityMicromapFeaturesEXT, micromapCaptureReplay}

instance Offset "micromapHostCommands" VkPhysicalDeviceOpacityMicromapFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceOpacityMicromapFeaturesEXT, micromapHostCommands}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceOpacityMicromapFeaturesEXT where

#endif