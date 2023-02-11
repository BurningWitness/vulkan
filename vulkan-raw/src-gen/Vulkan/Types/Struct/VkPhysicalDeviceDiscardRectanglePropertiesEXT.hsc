{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_discard_rectangles

module Vulkan.Types.Struct.VkPhysicalDeviceDiscardRectanglePropertiesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceDiscardRectanglePropertiesEXT" #-} VkPhysicalDeviceDiscardRectanglePropertiesEXT =
       VkPhysicalDeviceDiscardRectanglePropertiesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , maxDiscardRectangles :: #{type uint32_t} -- ^ max number of active discard rectangles
         }

instance Storable VkPhysicalDeviceDiscardRectanglePropertiesEXT where
  sizeOf    _ = #{size      struct VkPhysicalDeviceDiscardRectanglePropertiesEXT}
  alignment _ = #{alignment struct VkPhysicalDeviceDiscardRectanglePropertiesEXT}

  peek ptr = 
    VkPhysicalDeviceDiscardRectanglePropertiesEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"maxDiscardRectangles" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"maxDiscardRectangles" ptr val

instance Offset "sType" VkPhysicalDeviceDiscardRectanglePropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceDiscardRectanglePropertiesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceDiscardRectanglePropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceDiscardRectanglePropertiesEXT, pNext}

instance Offset "maxDiscardRectangles" VkPhysicalDeviceDiscardRectanglePropertiesEXT where
  rawOffset = #{offset struct VkPhysicalDeviceDiscardRectanglePropertiesEXT, maxDiscardRectangles}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceDiscardRectanglePropertiesEXT where

#endif