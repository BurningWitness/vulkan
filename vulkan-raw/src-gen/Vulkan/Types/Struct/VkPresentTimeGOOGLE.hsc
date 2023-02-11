{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_GOOGLE_display_timing

module Vulkan.Types.Struct.VkPresentTimeGOOGLE where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset



data {-# CTYPE "vulkan/vulkan.h" "VkPresentTimeGOOGLE" #-} VkPresentTimeGOOGLE =
       VkPresentTimeGOOGLE
         { presentID :: #{type uint32_t} -- ^ Application-provided identifier
         , desiredPresentTime :: #{type uint64_t} -- ^ Earliest time an image should be presented
         }

instance Storable VkPresentTimeGOOGLE where
  sizeOf    _ = #{size      struct VkPresentTimeGOOGLE}
  alignment _ = #{alignment struct VkPresentTimeGOOGLE}

  peek ptr = 
    VkPresentTimeGOOGLE
       <$> peek (offset @"presentID" ptr)
       <*> peek (offset @"desiredPresentTime" ptr)

  poke ptr val = do
    pokeField @"presentID" ptr val
    pokeField @"desiredPresentTime" ptr val

instance Offset "presentID" VkPresentTimeGOOGLE where
  rawOffset = #{offset struct VkPresentTimeGOOGLE, presentID}

instance Offset "desiredPresentTime" VkPresentTimeGOOGLE where
  rawOffset = #{offset struct VkPresentTimeGOOGLE, desiredPresentTime}

#else

module Vulkan.Types.Struct.VkPresentTimeGOOGLE where

#endif