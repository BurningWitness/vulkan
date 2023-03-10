{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkPipelineCacheCreateInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkPipelineCacheCreateFlags
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPipelineCacheCreateInfo" #-} VkPipelineCacheCreateInfo =
       VkPipelineCacheCreateInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkPipelineCacheCreateFlags
         , initialDataSize :: #{type size_t} -- ^ Size of initial data to populate cache, in bytes
         , pInitialData :: Ptr () -- ^ Initial data to populate cache
         }

instance Storable VkPipelineCacheCreateInfo where
  sizeOf    _ = #{size      VkPipelineCacheCreateInfo}
  alignment _ = #{alignment VkPipelineCacheCreateInfo}

  peek ptr = 
    VkPipelineCacheCreateInfo
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"flags" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"initialDataSize" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pInitialData" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"initialDataSize" ptr val
    pokeField @"pInitialData" ptr val

instance Offset "sType" VkPipelineCacheCreateInfo where
  rawOffset = #{offset VkPipelineCacheCreateInfo, sType}

instance Offset "pNext" VkPipelineCacheCreateInfo where
  rawOffset = #{offset VkPipelineCacheCreateInfo, pNext}

instance Offset "flags" VkPipelineCacheCreateInfo where
  rawOffset = #{offset VkPipelineCacheCreateInfo, flags}

instance Offset "initialDataSize" VkPipelineCacheCreateInfo where
  rawOffset = #{offset VkPipelineCacheCreateInfo, initialDataSize}

instance Offset "pInitialData" VkPipelineCacheCreateInfo where
  rawOffset = #{offset VkPipelineCacheCreateInfo, pInitialData}