{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_video_queue

module Vulkan.Types.Struct.VkVideoSessionMemoryRequirementsKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkMemoryRequirements



data {-# CTYPE "vulkan/vulkan.h" "VkVideoSessionMemoryRequirementsKHR" #-} VkVideoSessionMemoryRequirementsKHR =
       VkVideoSessionMemoryRequirementsKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , memoryBindIndex :: #{type uint32_t}
         , memoryRequirements :: VkMemoryRequirements
         }

instance Storable VkVideoSessionMemoryRequirementsKHR where
  sizeOf    _ = #{size      VkVideoSessionMemoryRequirementsKHR}
  alignment _ = #{alignment VkVideoSessionMemoryRequirementsKHR}

  peek ptr = 
    VkVideoSessionMemoryRequirementsKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"memoryBindIndex" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"memoryRequirements" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"memoryBindIndex" ptr val
    pokeField @"memoryRequirements" ptr val

instance Offset "sType" VkVideoSessionMemoryRequirementsKHR where
  rawOffset = #{offset VkVideoSessionMemoryRequirementsKHR, sType}

instance Offset "pNext" VkVideoSessionMemoryRequirementsKHR where
  rawOffset = #{offset VkVideoSessionMemoryRequirementsKHR, pNext}

instance Offset "memoryBindIndex" VkVideoSessionMemoryRequirementsKHR where
  rawOffset = #{offset VkVideoSessionMemoryRequirementsKHR, memoryBindIndex}

instance Offset "memoryRequirements" VkVideoSessionMemoryRequirementsKHR where
  rawOffset = #{offset VkVideoSessionMemoryRequirementsKHR, memoryRequirements}

#else

module Vulkan.Types.Struct.VkVideoSessionMemoryRequirementsKHR where

#endif