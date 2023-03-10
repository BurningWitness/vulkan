{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_line_rasterization

module Vulkan.Types.Struct.VkPhysicalDeviceLineRasterizationPropertiesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceLineRasterizationPropertiesEXT" #-} VkPhysicalDeviceLineRasterizationPropertiesEXT =
       VkPhysicalDeviceLineRasterizationPropertiesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , lineSubPixelPrecisionBits :: #{type uint32_t}
         }

instance Storable VkPhysicalDeviceLineRasterizationPropertiesEXT where
  sizeOf    _ = #{size      VkPhysicalDeviceLineRasterizationPropertiesEXT}
  alignment _ = #{alignment VkPhysicalDeviceLineRasterizationPropertiesEXT}

  peek ptr = 
    VkPhysicalDeviceLineRasterizationPropertiesEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"lineSubPixelPrecisionBits" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"lineSubPixelPrecisionBits" ptr val

instance Offset "sType" VkPhysicalDeviceLineRasterizationPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceLineRasterizationPropertiesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceLineRasterizationPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceLineRasterizationPropertiesEXT, pNext}

instance Offset "lineSubPixelPrecisionBits" VkPhysicalDeviceLineRasterizationPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceLineRasterizationPropertiesEXT, lineSubPixelPrecisionBits}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceLineRasterizationPropertiesEXT where

#endif