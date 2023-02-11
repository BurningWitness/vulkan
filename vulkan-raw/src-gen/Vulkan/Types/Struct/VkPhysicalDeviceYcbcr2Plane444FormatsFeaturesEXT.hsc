{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_ycbcr_2plane_444_formats

module Vulkan.Types.Struct.VkPhysicalDeviceYcbcr2Plane444FormatsFeaturesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceYcbcr2Plane444FormatsFeaturesEXT" #-} VkPhysicalDeviceYcbcr2Plane444FormatsFeaturesEXT =
       VkPhysicalDeviceYcbcr2Plane444FormatsFeaturesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , ycbcr2plane444Formats :: VkBool32
         }

instance Storable VkPhysicalDeviceYcbcr2Plane444FormatsFeaturesEXT where
  sizeOf    _ = #{size      struct VkPhysicalDeviceYcbcr2Plane444FormatsFeaturesEXT}
  alignment _ = #{alignment struct VkPhysicalDeviceYcbcr2Plane444FormatsFeaturesEXT}

  peek ptr = 
    VkPhysicalDeviceYcbcr2Plane444FormatsFeaturesEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"ycbcr2plane444Formats" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"ycbcr2plane444Formats" ptr val

instance Offset "sType" VkPhysicalDeviceYcbcr2Plane444FormatsFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceYcbcr2Plane444FormatsFeaturesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceYcbcr2Plane444FormatsFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceYcbcr2Plane444FormatsFeaturesEXT, pNext}

instance Offset "ycbcr2plane444Formats" VkPhysicalDeviceYcbcr2Plane444FormatsFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceYcbcr2Plane444FormatsFeaturesEXT, ycbcr2plane444Formats}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceYcbcr2Plane444FormatsFeaturesEXT where

#endif