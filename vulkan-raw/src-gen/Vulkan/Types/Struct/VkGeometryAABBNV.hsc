{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_ray_tracing

module Vulkan.Types.Struct.VkGeometryAABBNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkGeometryAABBNV" #-} VkGeometryAABBNV =
       VkGeometryAABBNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , aabbData :: VkBuffer
         , numAABBs :: #{type uint32_t}
         , stride :: #{type uint32_t} -- ^ Stride in bytes between AABBs
         , offset :: VkDeviceSize -- ^ Offset in bytes of the first AABB in aabbData
         }

instance Storable VkGeometryAABBNV where
  sizeOf    _ = #{size      VkGeometryAABBNV}
  alignment _ = #{alignment VkGeometryAABBNV}

  peek ptr = 
    VkGeometryAABBNV
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"aabbData" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"numAABBs" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"stride" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"offset" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"aabbData" ptr val
    pokeField @"numAABBs" ptr val
    pokeField @"stride" ptr val
    pokeField @"offset" ptr val

instance Offset "sType" VkGeometryAABBNV where
  rawOffset = #{offset VkGeometryAABBNV, sType}

instance Offset "pNext" VkGeometryAABBNV where
  rawOffset = #{offset VkGeometryAABBNV, pNext}

instance Offset "aabbData" VkGeometryAABBNV where
  rawOffset = #{offset VkGeometryAABBNV, aabbData}

instance Offset "numAABBs" VkGeometryAABBNV where
  rawOffset = #{offset VkGeometryAABBNV, numAABBs}

instance Offset "stride" VkGeometryAABBNV where
  rawOffset = #{offset VkGeometryAABBNV, stride}

instance Offset "offset" VkGeometryAABBNV where
  rawOffset = #{offset VkGeometryAABBNV, offset}

#else

module Vulkan.Types.Struct.VkGeometryAABBNV where

#endif