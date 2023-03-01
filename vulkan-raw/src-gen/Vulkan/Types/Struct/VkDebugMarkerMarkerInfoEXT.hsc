{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
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
  sizeOf    _ = #{size      VkDebugMarkerMarkerInfoEXT}
  alignment _ = #{alignment VkDebugMarkerMarkerInfoEXT}

  peek ptr = 
    VkDebugMarkerMarkerInfoEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pMarkerName" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"color" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"pMarkerName" ptr val
    pokeField @"color" ptr val

instance Offset "sType" VkDebugMarkerMarkerInfoEXT where
  rawOffset = #{offset VkDebugMarkerMarkerInfoEXT, sType}

instance Offset "pNext" VkDebugMarkerMarkerInfoEXT where
  rawOffset = #{offset VkDebugMarkerMarkerInfoEXT, pNext}

instance Offset "pMarkerName" VkDebugMarkerMarkerInfoEXT where
  rawOffset = #{offset VkDebugMarkerMarkerInfoEXT, pMarkerName}

instance Offset "color" VkDebugMarkerMarkerInfoEXT where
  rawOffset = #{offset VkDebugMarkerMarkerInfoEXT, color}

#else

module Vulkan.Types.Struct.VkDebugMarkerMarkerInfoEXT where

#endif