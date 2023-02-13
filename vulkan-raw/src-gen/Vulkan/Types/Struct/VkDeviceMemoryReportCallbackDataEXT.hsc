{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_device_memory_report

module Vulkan.Types.Struct.VkDeviceMemoryReportCallbackDataEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import GHC.Records
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkDeviceMemoryReportEventTypeEXT
import Vulkan.Types.Enum.VkDeviceMemoryReportFlagsEXT
import Vulkan.Types.Enum.VkObjectType
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkDeviceMemoryReportCallbackDataEXT" #-} VkDeviceMemoryReportCallbackDataEXT =
       VkDeviceMemoryReportCallbackDataEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkDeviceMemoryReportFlagsEXT
         , type_ :: VkDeviceMemoryReportEventTypeEXT
         , memoryObjectId :: #{type uint64_t}
         , size :: VkDeviceSize
         , objectType :: VkObjectType
         , objectHandle :: #{type uint64_t}
         , heapIndex :: #{type uint32_t}
         }

instance Storable VkDeviceMemoryReportCallbackDataEXT where
  sizeOf    _ = #{size      VkDeviceMemoryReportCallbackDataEXT}
  alignment _ = #{alignment VkDeviceMemoryReportCallbackDataEXT}

  peek ptr = 
    VkDeviceMemoryReportCallbackDataEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"flags" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"type" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"memoryObjectId" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"size" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"objectType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"objectHandle" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"heapIndex" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"type" ptr val
    pokeField @"memoryObjectId" ptr val
    pokeField @"size" ptr val
    pokeField @"objectType" ptr val
    pokeField @"objectHandle" ptr val
    pokeField @"heapIndex" ptr val

instance Offset "sType" VkDeviceMemoryReportCallbackDataEXT where
  rawOffset = #{offset VkDeviceMemoryReportCallbackDataEXT, sType}

instance Offset "pNext" VkDeviceMemoryReportCallbackDataEXT where
  rawOffset = #{offset VkDeviceMemoryReportCallbackDataEXT, pNext}

instance Offset "flags" VkDeviceMemoryReportCallbackDataEXT where
  rawOffset = #{offset VkDeviceMemoryReportCallbackDataEXT, flags}

instance Offset "type_" VkDeviceMemoryReportCallbackDataEXT where
  rawOffset = #{offset VkDeviceMemoryReportCallbackDataEXT, type}

instance Offset "memoryObjectId" VkDeviceMemoryReportCallbackDataEXT where
  rawOffset = #{offset VkDeviceMemoryReportCallbackDataEXT, memoryObjectId}

instance Offset "size" VkDeviceMemoryReportCallbackDataEXT where
  rawOffset = #{offset VkDeviceMemoryReportCallbackDataEXT, size}

instance Offset "objectType" VkDeviceMemoryReportCallbackDataEXT where
  rawOffset = #{offset VkDeviceMemoryReportCallbackDataEXT, objectType}

instance Offset "objectHandle" VkDeviceMemoryReportCallbackDataEXT where
  rawOffset = #{offset VkDeviceMemoryReportCallbackDataEXT, objectHandle}

instance Offset "heapIndex" VkDeviceMemoryReportCallbackDataEXT where
  rawOffset = #{offset VkDeviceMemoryReportCallbackDataEXT, heapIndex}

instance Offset "type" VkDeviceMemoryReportCallbackDataEXT where
  rawOffset = rawOffset @"type_" @VkDeviceMemoryReportCallbackDataEXT

instance HasField "type" VkDeviceMemoryReportCallbackDataEXT VkDeviceMemoryReportEventTypeEXT where
  getField = getField @"type_" @VkDeviceMemoryReportCallbackDataEXT

#else

module Vulkan.Types.Struct.VkDeviceMemoryReportCallbackDataEXT where

#endif