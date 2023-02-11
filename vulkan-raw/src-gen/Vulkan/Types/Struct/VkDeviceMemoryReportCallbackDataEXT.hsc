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
  sizeOf    _ = #{size      struct VkDeviceMemoryReportCallbackDataEXT}
  alignment _ = #{alignment struct VkDeviceMemoryReportCallbackDataEXT}

  peek ptr = 
    VkDeviceMemoryReportCallbackDataEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"flags" ptr)
       <*> peek (offset @"type" ptr)
       <*> peek (offset @"memoryObjectId" ptr)
       <*> peek (offset @"size" ptr)
       <*> peek (offset @"objectType" ptr)
       <*> peek (offset @"objectHandle" ptr)
       <*> peek (offset @"heapIndex" ptr)

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
  rawOffset = #{offset struct VkDeviceMemoryReportCallbackDataEXT, sType}

instance Offset "pNext" VkDeviceMemoryReportCallbackDataEXT where
  rawOffset = #{offset struct VkDeviceMemoryReportCallbackDataEXT, pNext}

instance Offset "flags" VkDeviceMemoryReportCallbackDataEXT where
  rawOffset = #{offset struct VkDeviceMemoryReportCallbackDataEXT, flags}

instance Offset "type_" VkDeviceMemoryReportCallbackDataEXT where
  rawOffset = #{offset struct VkDeviceMemoryReportCallbackDataEXT, type}

instance Offset "memoryObjectId" VkDeviceMemoryReportCallbackDataEXT where
  rawOffset = #{offset struct VkDeviceMemoryReportCallbackDataEXT, memoryObjectId}

instance Offset "size" VkDeviceMemoryReportCallbackDataEXT where
  rawOffset = #{offset struct VkDeviceMemoryReportCallbackDataEXT, size}

instance Offset "objectType" VkDeviceMemoryReportCallbackDataEXT where
  rawOffset = #{offset struct VkDeviceMemoryReportCallbackDataEXT, objectType}

instance Offset "objectHandle" VkDeviceMemoryReportCallbackDataEXT where
  rawOffset = #{offset struct VkDeviceMemoryReportCallbackDataEXT, objectHandle}

instance Offset "heapIndex" VkDeviceMemoryReportCallbackDataEXT where
  rawOffset = #{offset struct VkDeviceMemoryReportCallbackDataEXT, heapIndex}

instance Offset "type" VkDeviceMemoryReportCallbackDataEXT where
  rawOffset = rawOffset @"type_" @VkDeviceMemoryReportCallbackDataEXT

instance HasField "type" VkDeviceMemoryReportCallbackDataEXT VkDeviceMemoryReportEventTypeEXT where
  getField = getField @"type_" @VkDeviceMemoryReportCallbackDataEXT

#else

module Vulkan.Types.Struct.VkDeviceMemoryReportCallbackDataEXT where

#endif