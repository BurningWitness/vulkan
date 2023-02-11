{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkSpecializationInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Struct.VkSpecializationMapEntry



data {-# CTYPE "vulkan/vulkan.h" "VkSpecializationInfo" #-} VkSpecializationInfo =
       VkSpecializationInfo
         { mapEntryCount :: #{type uint32_t} -- ^ Number of entries in the map
         , pMapEntries :: Ptr VkSpecializationMapEntry -- ^ Array of map entries
         , dataSize :: #{type size_t} -- ^ Size in bytes of pData
         , pData :: Ptr () -- ^ Pointer to SpecConstant data
         }

instance Storable VkSpecializationInfo where
  sizeOf    _ = #{size      struct VkSpecializationInfo}
  alignment _ = #{alignment struct VkSpecializationInfo}

  peek ptr = 
    VkSpecializationInfo
       <$> peek (offset @"mapEntryCount" ptr)
       <*> peek (offset @"pMapEntries" ptr)
       <*> peek (offset @"dataSize" ptr)
       <*> peek (offset @"pData" ptr)

  poke ptr val = do
    pokeField @"mapEntryCount" ptr val
    pokeField @"pMapEntries" ptr val
    pokeField @"dataSize" ptr val
    pokeField @"pData" ptr val

instance Offset "mapEntryCount" VkSpecializationInfo where
  rawOffset = #{offset struct VkSpecializationInfo, mapEntryCount}

instance Offset "pMapEntries" VkSpecializationInfo where
  rawOffset = #{offset struct VkSpecializationInfo, pMapEntries}

instance Offset "dataSize" VkSpecializationInfo where
  rawOffset = #{offset struct VkSpecializationInfo, dataSize}

instance Offset "pData" VkSpecializationInfo where
  rawOffset = #{offset struct VkSpecializationInfo, pData}