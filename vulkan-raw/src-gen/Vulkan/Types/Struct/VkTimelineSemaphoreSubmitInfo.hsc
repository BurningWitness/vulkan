{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_2

module Vulkan.Types.Struct.VkTimelineSemaphoreSubmitInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkTimelineSemaphoreSubmitInfo" #-} VkTimelineSemaphoreSubmitInfo =
       VkTimelineSemaphoreSubmitInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , waitSemaphoreValueCount :: #{type uint32_t}
         , pWaitSemaphoreValues :: Ptr #{type uint64_t}
         , signalSemaphoreValueCount :: #{type uint32_t}
         , pSignalSemaphoreValues :: Ptr #{type uint64_t}
         }

instance Storable VkTimelineSemaphoreSubmitInfo where
  sizeOf    _ = #{size      struct VkTimelineSemaphoreSubmitInfo}
  alignment _ = #{alignment struct VkTimelineSemaphoreSubmitInfo}

  peek ptr = 
    VkTimelineSemaphoreSubmitInfo
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"waitSemaphoreValueCount" ptr)
       <*> peek (offset @"pWaitSemaphoreValues" ptr)
       <*> peek (offset @"signalSemaphoreValueCount" ptr)
       <*> peek (offset @"pSignalSemaphoreValues" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"waitSemaphoreValueCount" ptr val
    pokeField @"pWaitSemaphoreValues" ptr val
    pokeField @"signalSemaphoreValueCount" ptr val
    pokeField @"pSignalSemaphoreValues" ptr val

instance Offset "sType" VkTimelineSemaphoreSubmitInfo where
  rawOffset = #{offset struct VkTimelineSemaphoreSubmitInfo, sType}

instance Offset "pNext" VkTimelineSemaphoreSubmitInfo where
  rawOffset = #{offset struct VkTimelineSemaphoreSubmitInfo, pNext}

instance Offset "waitSemaphoreValueCount" VkTimelineSemaphoreSubmitInfo where
  rawOffset = #{offset struct VkTimelineSemaphoreSubmitInfo, waitSemaphoreValueCount}

instance Offset "pWaitSemaphoreValues" VkTimelineSemaphoreSubmitInfo where
  rawOffset = #{offset struct VkTimelineSemaphoreSubmitInfo, pWaitSemaphoreValues}

instance Offset "signalSemaphoreValueCount" VkTimelineSemaphoreSubmitInfo where
  rawOffset = #{offset struct VkTimelineSemaphoreSubmitInfo, signalSemaphoreValueCount}

instance Offset "pSignalSemaphoreValues" VkTimelineSemaphoreSubmitInfo where
  rawOffset = #{offset struct VkTimelineSemaphoreSubmitInfo, pSignalSemaphoreValues}

#else

module Vulkan.Types.Struct.VkTimelineSemaphoreSubmitInfo where

#endif