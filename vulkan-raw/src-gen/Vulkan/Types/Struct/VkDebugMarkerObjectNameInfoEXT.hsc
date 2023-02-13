{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_debug_marker

module Vulkan.Types.Struct.VkDebugMarkerObjectNameInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkDebugReportObjectTypeEXT
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkDebugMarkerObjectNameInfoEXT" #-} VkDebugMarkerObjectNameInfoEXT =
       VkDebugMarkerObjectNameInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , objectType :: VkDebugReportObjectTypeEXT -- ^ The type of the object
         , object :: #{type uint64_t} -- ^ The handle of the object, cast to uint64_t
         , pObjectName :: Ptr #{type char} -- ^ Name to apply to the object
         }

instance Storable VkDebugMarkerObjectNameInfoEXT where
  sizeOf    _ = #{size      VkDebugMarkerObjectNameInfoEXT}
  alignment _ = #{alignment VkDebugMarkerObjectNameInfoEXT}

  peek ptr = 
    VkDebugMarkerObjectNameInfoEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"objectType" ptr)
       <*> peek (offset @"object" ptr)
       <*> peek (offset @"pObjectName" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"objectType" ptr val
    pokeField @"object" ptr val
    pokeField @"pObjectName" ptr val

instance Offset "sType" VkDebugMarkerObjectNameInfoEXT where
  rawOffset = #{offset VkDebugMarkerObjectNameInfoEXT, sType}

instance Offset "pNext" VkDebugMarkerObjectNameInfoEXT where
  rawOffset = #{offset VkDebugMarkerObjectNameInfoEXT, pNext}

instance Offset "objectType" VkDebugMarkerObjectNameInfoEXT where
  rawOffset = #{offset VkDebugMarkerObjectNameInfoEXT, objectType}

instance Offset "object" VkDebugMarkerObjectNameInfoEXT where
  rawOffset = #{offset VkDebugMarkerObjectNameInfoEXT, object}

instance Offset "pObjectName" VkDebugMarkerObjectNameInfoEXT where
  rawOffset = #{offset VkDebugMarkerObjectNameInfoEXT, pObjectName}

#else

module Vulkan.Types.Struct.VkDebugMarkerObjectNameInfoEXT where

#endif