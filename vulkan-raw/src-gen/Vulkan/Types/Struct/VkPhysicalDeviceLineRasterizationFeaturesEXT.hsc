{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_line_rasterization

module Vulkan.Types.Struct.VkPhysicalDeviceLineRasterizationFeaturesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceLineRasterizationFeaturesEXT" #-} VkPhysicalDeviceLineRasterizationFeaturesEXT =
       VkPhysicalDeviceLineRasterizationFeaturesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , rectangularLines :: VkBool32
         , bresenhamLines :: VkBool32
         , smoothLines :: VkBool32
         , stippledRectangularLines :: VkBool32
         , stippledBresenhamLines :: VkBool32
         , stippledSmoothLines :: VkBool32
         }

instance Storable VkPhysicalDeviceLineRasterizationFeaturesEXT where
  sizeOf    _ = #{size      struct VkPhysicalDeviceLineRasterizationFeaturesEXT}
  alignment _ = #{alignment struct VkPhysicalDeviceLineRasterizationFeaturesEXT}

  peek ptr = 
    VkPhysicalDeviceLineRasterizationFeaturesEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"rectangularLines" ptr)
       <*> peek (offset @"bresenhamLines" ptr)
       <*> peek (offset @"smoothLines" ptr)
       <*> peek (offset @"stippledRectangularLines" ptr)
       <*> peek (offset @"stippledBresenhamLines" ptr)
       <*> peek (offset @"stippledSmoothLines" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"rectangularLines" ptr val
    pokeField @"bresenhamLines" ptr val
    pokeField @"smoothLines" ptr val
    pokeField @"stippledRectangularLines" ptr val
    pokeField @"stippledBresenhamLines" ptr val
    pokeField @"stippledSmoothLines" ptr val

instance Offset "sType" VkPhysicalDeviceLineRasterizationFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceLineRasterizationFeaturesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceLineRasterizationFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceLineRasterizationFeaturesEXT, pNext}

instance Offset "rectangularLines" VkPhysicalDeviceLineRasterizationFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceLineRasterizationFeaturesEXT, rectangularLines}

instance Offset "bresenhamLines" VkPhysicalDeviceLineRasterizationFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceLineRasterizationFeaturesEXT, bresenhamLines}

instance Offset "smoothLines" VkPhysicalDeviceLineRasterizationFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceLineRasterizationFeaturesEXT, smoothLines}

instance Offset "stippledRectangularLines" VkPhysicalDeviceLineRasterizationFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceLineRasterizationFeaturesEXT, stippledRectangularLines}

instance Offset "stippledBresenhamLines" VkPhysicalDeviceLineRasterizationFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceLineRasterizationFeaturesEXT, stippledBresenhamLines}

instance Offset "stippledSmoothLines" VkPhysicalDeviceLineRasterizationFeaturesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceLineRasterizationFeaturesEXT, stippledSmoothLines}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceLineRasterizationFeaturesEXT where

#endif