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
  sizeOf    _ = #{size      VkVideoProfileListInfoKHR}
  alignment _ = #{alignment VkVideoProfileListInfoKHR}

  peek ptr = 
    VkVideoProfileListInfoKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"profileCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pProfiles" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"profileCount" ptr val
    pokeField @"pProfiles" ptr val

instance Offset "sType" VkVideoProfileListInfoKHR where
  rawOffset = #{offset VkVideoProfileListInfoKHR, sType}

instance Offset "pNext" VkVideoProfileListInfoKHR where
  rawOffset = #{offset VkVideoProfileListInfoKHR, pNext}

instance Offset "profileCount" VkVideoProfileListInfoKHR where
  rawOffset = #{offset VkVideoProfileListInfoKHR, profileCount}

instance Offset "pProfiles" VkVideoProfileListInfoKHR where
  rawOffset = #{offset VkVideoProfileListInfoKHR, pProfiles}

#else

module Vulkan.Types.Struct.VkVideoProfileListInfoKHR where

#endif