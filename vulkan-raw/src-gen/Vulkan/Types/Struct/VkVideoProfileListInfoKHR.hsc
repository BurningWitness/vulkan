{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_video_queue

module Vulkan.Types.Struct.VkVideoProfileListInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkVideoProfileInfoKHR



data {-# CTYPE "vulkan/vulkan.h" "VkVideoProfileListInfoKHR" #-} VkVideoProfileListInfoKHR =
       VkVideoProfileListInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , profileCount :: #{type uint32_t}
         , pProfiles :: Ptr VkVideoProfileInfoKHR
         }

instance Storable VkVideoProfileListInfoKHR where
  sizeOf    _ = #{size      struct VkVideoProfileListInfoKHR}
  alignment _ = #{alignment struct VkVideoProfileListInfoKHR}

  peek ptr = 
    VkVideoProfileListInfoKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"profileCount" ptr)
       <*> peek (offset @"pProfiles" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"profileCount" ptr val
    pokeField @"pProfiles" ptr val

instance Offset "sType" VkVideoProfileListInfoKHR where
  rawOffset = #{offset struct VkVideoProfileListInfoKHR, sType}

instance Offset "pNext" VkVideoProfileListInfoKHR where
  rawOffset = #{offset struct VkVideoProfileListInfoKHR, pNext}

instance Offset "profileCount" VkVideoProfileListInfoKHR where
  rawOffset = #{offset struct VkVideoProfileListInfoKHR, profileCount}

instance Offset "pProfiles" VkVideoProfileListInfoKHR where
  rawOffset = #{offset struct VkVideoProfileListInfoKHR, pProfiles}

#else

module Vulkan.Types.Struct.VkVideoProfileListInfoKHR where

#endif