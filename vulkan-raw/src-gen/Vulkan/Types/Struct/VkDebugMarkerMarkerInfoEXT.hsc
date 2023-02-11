{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_debug_marker

module Vulkan.Types.Struct.VkDebugMarkerMarkerInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkDebugMarkerMarkerInfoEXT" #-} VkDebugMarkerMarkerInfoEXT =
       VkDebugMarkerMarkerInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , pMarkerName :: Ptr #{type char} -- ^ Name of the debug marker
         , color :: #{type float} -- ^ Optional color for debug marker
         }

instance Storable VkDebugMarkerMarkerInfoEXT where
  sizeOf    _ = #{size      struct VkDebugMarkerMarkerInfoEXT}
  alignment _ = #{alignment struct VkDebugMarkerMarkerInfoEXT}

  peek ptr = 
    VkDebugMarkerMarkerInfoEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"pMarkerName" ptr)
       <*> peek (offset @"color" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"pMarkerName" ptr val
    pokeField @"color" ptr val

instance Offset "sType" VkDebugMarkerMarkerInfoEXT where
  rawOffset = #{offset struct VkDebugMarkerMarkerInfoEXT, sType}

instance Offset "pNext" VkDebugMarkerMarkerInfoEXT where
  rawOffset = #{offset struct VkDebugMarkerMarkerInfoEXT, pNext}

instance Offset "pMarkerName" VkDebugMarkerMarkerInfoEXT where
  rawOffset = #{offset struct VkDebugMarkerMarkerInfoEXT, pMarkerName}

instance Offset "color" VkDebugMarkerMarkerInfoEXT where
  rawOffset = #{offset struct VkDebugMarkerMarkerInfoEXT, color}

#else

module Vulkan.Types.Struct.VkDebugMarkerMarkerInfoEXT where

#endif