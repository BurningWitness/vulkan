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

module Vulkan.Types.Struct.VkDebugMarkerObjectTagInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkDebugReportObjectTypeEXT
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkDebugMarkerObjectTagInfoEXT" #-} VkDebugMarkerObjectTagInfoEXT =
       VkDebugMarkerObjectTagInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , objectType :: VkDebugReportObjectTypeEXT -- ^ The type of the object
         , object :: #{type uint64_t} -- ^ The handle of the object, cast to uint64_t
         , tagName :: #{type uint64_t} -- ^ The name of the tag to set on the object
         , tagSize :: #{type size_t} -- ^ The length in bytes of the tag data
         , pTag :: Ptr () -- ^ Tag data to attach to the object
         }

instance Storable VkDebugMarkerObjectTagInfoEXT where
  sizeOf    _ = #{size      VkDebugMarkerObjectTagInfoEXT}
  alignment _ = #{alignment VkDebugMarkerObjectTagInfoEXT}

  peek ptr = 
    VkDebugMarkerObjectTagInfoEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"objectType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"object" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"tagName" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"tagSize" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pTag" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"objectType" ptr val
    pokeField @"object" ptr val
    pokeField @"tagName" ptr val
    pokeField @"tagSize" ptr val
    pokeField @"pTag" ptr val

instance Offset "sType" VkDebugMarkerObjectTagInfoEXT where
  rawOffset = #{offset VkDebugMarkerObjectTagInfoEXT, sType}

instance Offset "pNext" VkDebugMarkerObjectTagInfoEXT where
  rawOffset = #{offset VkDebugMarkerObjectTagInfoEXT, pNext}

instance Offset "objectType" VkDebugMarkerObjectTagInfoEXT where
  rawOffset = #{offset VkDebugMarkerObjectTagInfoEXT, objectType}

instance Offset "object" VkDebugMarkerObjectTagInfoEXT where
  rawOffset = #{offset VkDebugMarkerObjectTagInfoEXT, object}

instance Offset "tagName" VkDebugMarkerObjectTagInfoEXT where
  rawOffset = #{offset VkDebugMarkerObjectTagInfoEXT, tagName}

instance Offset "tagSize" VkDebugMarkerObjectTagInfoEXT where
  rawOffset = #{offset VkDebugMarkerObjectTagInfoEXT, tagSize}

instance Offset "pTag" VkDebugMarkerObjectTagInfoEXT where
  rawOffset = #{offset VkDebugMarkerObjectTagInfoEXT, pTag}

#else

module Vulkan.Types.Struct.VkDebugMarkerObjectTagInfoEXT where

#endif