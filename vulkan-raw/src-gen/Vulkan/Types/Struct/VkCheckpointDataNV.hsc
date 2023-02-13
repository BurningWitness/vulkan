{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_device_diagnostic_checkpoints

module Vulkan.Types.Struct.VkCheckpointDataNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkPipelineStageFlagBits
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkCheckpointDataNV" #-} VkCheckpointDataNV =
       VkCheckpointDataNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , stage :: VkPipelineStageFlagBits
         , pCheckpointMarker :: Ptr ()
         }

instance Storable VkCheckpointDataNV where
  sizeOf    _ = #{size      VkCheckpointDataNV}
  alignment _ = #{alignment VkCheckpointDataNV}

  peek ptr = 
    VkCheckpointDataNV
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"stage" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pCheckpointMarker" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"stage" ptr val
    pokeField @"pCheckpointMarker" ptr val

instance Offset "sType" VkCheckpointDataNV where
  rawOffset = #{offset VkCheckpointDataNV, sType}

instance Offset "pNext" VkCheckpointDataNV where
  rawOffset = #{offset VkCheckpointDataNV, pNext}

instance Offset "stage" VkCheckpointDataNV where
  rawOffset = #{offset VkCheckpointDataNV, stage}

instance Offset "pCheckpointMarker" VkCheckpointDataNV where
  rawOffset = #{offset VkCheckpointDataNV, pCheckpointMarker}

#else

module Vulkan.Types.Struct.VkCheckpointDataNV where

#endif