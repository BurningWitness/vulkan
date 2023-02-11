{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_metal_objects

module Vulkan.Types.Struct.VkExportMetalSharedEventInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkExportMetalSharedEventInfoEXT" #-} VkExportMetalSharedEventInfoEXT =
       VkExportMetalSharedEventInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , semaphore :: VkSemaphore
         , event :: VkEvent
         , mtlSharedEvent :: MTLSharedEvent_id
         }

instance Storable VkExportMetalSharedEventInfoEXT where
  sizeOf    _ = #{size      struct VkExportMetalSharedEventInfoEXT}
  alignment _ = #{alignment struct VkExportMetalSharedEventInfoEXT}

  peek ptr = 
    VkExportMetalSharedEventInfoEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"semaphore" ptr)
       <*> peek (offset @"event" ptr)
       <*> peek (offset @"mtlSharedEvent" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"semaphore" ptr val
    pokeField @"event" ptr val
    pokeField @"mtlSharedEvent" ptr val

instance Offset "sType" VkExportMetalSharedEventInfoEXT where
  rawOffset = #{offset struct VkExportMetalSharedEventInfoEXT, sType}

instance Offset "pNext" VkExportMetalSharedEventInfoEXT where
  rawOffset = #{offset struct VkExportMetalSharedEventInfoEXT, pNext}

instance Offset "semaphore" VkExportMetalSharedEventInfoEXT where
  rawOffset = #{offset struct VkExportMetalSharedEventInfoEXT, semaphore}

instance Offset "event" VkExportMetalSharedEventInfoEXT where
  rawOffset = #{offset struct VkExportMetalSharedEventInfoEXT, event}

instance Offset "mtlSharedEvent" VkExportMetalSharedEventInfoEXT where
  rawOffset = #{offset struct VkExportMetalSharedEventInfoEXT, mtlSharedEvent}

#else

module Vulkan.Types.Struct.VkExportMetalSharedEventInfoEXT where

#endif