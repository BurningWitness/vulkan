{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_image_compression_control

module Vulkan.Types.Struct.VkPhysicalDeviceImageCompressionControlFeaturesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceImageCompressionControlFeaturesEXT" #-} VkPhysicalDeviceImageCompressionControlFeaturesEXT =
       VkPhysicalDeviceImageCompressionControlFeaturesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , imageCompressionControl :: VkBool32
         }

instance Storable VkPhysicalDeviceImageCompressionControlFeaturesEXT where
  sizeOf    _ = #{size      VkPhysicalDeviceImageCompressionControlFeaturesEXT}
  alignment _ = #{alignment VkPhysicalDeviceImageCompressionControlFeaturesEXT}

  peek ptr = 
    VkPhysicalDeviceImageCompressionControlFeaturesEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"imageCompressionControl" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"imageCompressionControl" ptr val

instance Offset "sType" VkPhysicalDeviceImageCompressionControlFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceImageCompressionControlFeaturesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceImageCompressionControlFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceImageCompressionControlFeaturesEXT, pNext}

instance Offset "imageCompressionControl" VkPhysicalDeviceImageCompressionControlFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceImageCompressionControlFeaturesEXT, imageCompressionControl}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceImageCompressionControlFeaturesEXT where

#endif