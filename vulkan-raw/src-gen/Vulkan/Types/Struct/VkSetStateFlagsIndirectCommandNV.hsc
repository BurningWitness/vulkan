{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_device_generated_commands

module Vulkan.Types.Struct.VkSetStateFlagsIndirectCommandNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import GHC.Records



data {-# CTYPE "vulkan/vulkan.h" "VkSetStateFlagsIndirectCommandNV" #-} VkSetStateFlagsIndirectCommandNV =
       VkSetStateFlagsIndirectCommandNV
         { data_ :: #{type uint32_t}
         }

instance Storable VkSetStateFlagsIndirectCommandNV where
  sizeOf    _ = #{size      VkSetStateFlagsIndirectCommandNV}
  alignment _ = #{alignment VkSetStateFlagsIndirectCommandNV}

  peek ptr = 
    VkSetStateFlagsIndirectCommandNV
       <$> peek (Foreign.Storable.Offset.offset @"data" ptr)


  poke ptr val = do
    pokeField @"data" ptr val

instance Offset "data_" VkSetStateFlagsIndirectCommandNV where
  rawOffset = #{offset VkSetStateFlagsIndirectCommandNV, data}

instance Offset "data" VkSetStateFlagsIndirectCommandNV where
  rawOffset = rawOffset @"data_" @VkSetStateFlagsIndirectCommandNV

instance HasField "data" VkSetStateFlagsIndirectCommandNV #{type uint32_t} where
  getField = getField @"data_" @VkSetStateFlagsIndirectCommandNV

#else

module Vulkan.Types.Struct.VkSetStateFlagsIndirectCommandNV where

#endif